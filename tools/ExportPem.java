// Export the private key (PKCS#8) and certificate (X.509) from a Java keystore
// as PEM files, so the Vela quick-app build can sign the RPK with the exact
// same certificate as the Android APK.
//
// Usage: java ExportPem.java <keystore> <storePass> <alias> <outDir>

import java.io.FileInputStream;
import java.io.FileWriter;
import java.security.Key;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.util.Base64;
import java.util.Enumeration;

public class ExportPem {

    public static void main(String[] args) throws Exception {
        String path = args[0];
        String password = args[1];
        String alias = args[2];
        String outDir = args[3];

        KeyStore ks = KeyStore.getInstance("PKCS12");
        try (FileInputStream in = new FileInputStream(path)) {
            ks.load(in, password.toCharArray());
        }

        if (alias == null || alias.isEmpty()) {
            Enumeration<String> aliases = ks.aliases();
            while (aliases.hasMoreElements()) {
                alias = aliases.nextElement();
                break;
            }
        }
        System.out.println("using alias: " + alias);

        Key key = ks.getKey(alias, password.toCharArray());
        Certificate cert = ks.getCertificate(alias);
        if (key == null || cert == null) {
            throw new IllegalStateException("alias not found in keystore");
        }

        writePem(outDir + "/private.pem", "PRIVATE KEY", key.getEncoded());
        writePem(outDir + "/certificate.pem", "CERTIFICATE", cert.getEncoded());
        System.out.println("written to " + outDir);
    }

    private static void writePem(String file, String label, byte[] der) throws Exception {
        String base64 = Base64.getMimeEncoder(64, "\n".getBytes()).encodeToString(der);
        try (FileWriter fw = new FileWriter(file)) {
            fw.write("-----BEGIN " + label + "-----\n");
            fw.write(base64);
            fw.write("\n-----END " + label + "-----\n");
        }
    }
}
