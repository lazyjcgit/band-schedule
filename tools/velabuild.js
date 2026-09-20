// Drive aiot-toolkit's builder directly so compile errors are not swallowed.
// Usage: node tools/velabuild.js <projectDir> [build|release]

const path = require("path");
const projectPath = path.resolve(process.argv[2] || ".");
const mode = process.argv[3] || "build";

const toolkitRoot = path.join(projectPath, "node_modules", "aiot-toolkit");
const VelaUxBuilder = require(path.join(toolkitRoot, "lib", "builder", "VelaUxBuilder")).default;
const aiotpack = require(path.join(projectPath, "node_modules", "@aiot-toolkit", "aiotpack"));

(async () => {
  const events = {
    onLog: (logs) => {
      for (const log of logs) {
        const msg = Array.isArray(log.message)
          ? log.message.map((m) => (typeof m === "object" ? m.word : m)).join("")
          : log.message;
        console.log(`[level=${log.level}] ${msg}`);
      }
    },
    onError: (error) => console.error("[onError]", error && (error.stack || error)),
  };
  const builder = new VelaUxBuilder(events);
  const options = {
    mode: mode === "release" ? aiotpack.CompileMode.PRODUCTION : aiotpack.CompileMode.DEVELOPMENT,
  };
  try {
    const compilerOption = builder.getCompilerOption(projectPath, options);
    console.log("compilerOption keys:", Object.keys(compilerOption));
    console.log("  sourceRoot:", compilerOption.sourceRoot);
    console.log("  releasePath:", compilerOption.releasePath);
    console.log("  outputPath:", compilerOption.outputPath);
    const FileLane = require(path.join(projectPath, "node_modules", "file-lane", "lib", "FileLane")).default;
    const uxConfig = new aiotpack.UxConfig(projectPath);
    console.log("uxConfig:", JSON.stringify(uxConfig, (k, v) => (typeof v === "function" ? "[fn]" : v)).slice(0, 1500));
    const lane = new FileLane(uxConfig, projectPath, compilerOption, events);
    const errors = lane.validateConfig();
    console.log("validateConfig errors:", errors);
    console.log("collectFile:", (lane.collectFile() || []).length);
    await builder.build(projectPath, options);
    console.log("BUILD OK");
  } catch (e) {
    console.error("BUILD FAILED:", e && (e.stack || e));
    process.exitCode = 1;
  }
})();
