/// 主界面的冒烟测试：能起来、四个步骤都在、格式校验有反馈。
///
/// 不测真实蓝牙（那要真机），只保证界面本身不崩、关键提示都在。
library;

import 'package:band_schedule_pc/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('主界面能启动，四个步骤和主要按钮都在', (tester) async {
    await tester.pumpWidget(const BandScheduleApp());
    await tester.pumpAndSettle();

    expect(find.text('手环课表助手'), findsOneWidget);
    expect(find.text('① 选择课表'), findsOneWidget);
    expect(find.text('② 获取绑定密钥（authkey）'), findsOneWidget);
    expect(find.text('③ 连接手环'), findsOneWidget);
    expect(find.text('④ 安装应用并同步课表'), findsOneWidget);

    expect(find.text('选择课表文件'), findsOneWidget);
    expect(find.text('粘贴文本'), findsOneWidget);
    expect(find.text('登录并获取'), findsOneWidget);
    expect(find.text('扫描设备'), findsOneWidget);
    expect(find.text('连接'), findsOneWidget);
    expect(find.text('同步课表到手环'), findsOneWidget);

    // 手环地址可以直接手填 —— 因为手环不回应蓝牙查询，扫不到它是常态，
    // 只靠扫描的话新用户会卡死在这一步。
    expect(find.text('手环蓝牙地址（MAC）'), findsOneWidget);

    // 「连接时重新配对」默认必须是开的（和 OronBox 的默认一致）——
    // 关着的话手环会把连接交给手机批准，界面上出现「请在手机上确认连接」，
    // 这边就一直等不到回应。
    expect(find.text('连接时重新配对（推荐）'), findsOneWidget);
    final checkbox = tester.widget<CheckboxListTile>(
      find.byType(CheckboxListTile),
    );
    expect(checkbox.value, isTrue);
  });

  testWidgets('粘贴文本对话框能打开，格式说明可见', (tester) async {
    await tester.pumpWidget(const BandScheduleApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('粘贴文本'));
    await tester.pumpAndSettle();

    expect(find.text('粘贴课表文本'), findsOneWidget);
    // 注意："课程名 周几 节次" 在步骤①的说明里也出现过，所以这里断言"至少一处"
    // 并额外用对话框独有的文案来精确定位
    expect(find.textContaining('每行一门课'), findsOneWidget);
    expect(find.textContaining('周次用英文逗号分隔'), findsOneWidget);
    expect(find.textContaining('开学日期'), findsOneWidget);
  });

  testWidgets('authkey 格式校验给出视觉反馈', (tester) async {
    await tester.pumpWidget(const BandScheduleApp());
    await tester.pumpAndSettle();

    final field = find.widgetWithText(TextField, '绑定密钥 authkey');

    // 初始为空 → 显示"不对"的图标
    expect(find.byIcon(Icons.error_outline), findsOneWidget);

    // 长度不对 → 仍是错误态
    await tester.enterText(field, 'abc');
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.error_outline), findsOneWidget);

    // 32 位十六进制 → 错误图标消失（步骤卡片的对勾图标也会用 check_circle，
    // 所以这里判断"错误图标没了"而不是数对勾，避免和步骤标记混淆）
    await tester.enterText(field, '0123456789abcdef0123456789abcdef');
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.error_outline), findsNothing);
  });
}
