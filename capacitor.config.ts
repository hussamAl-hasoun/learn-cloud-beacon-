
import { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'app.lovable.470e83813fdc4a72b47dd8186e4607d2',
  appName: 'learn-cloud-beacon',
  webDir: 'dist',
  server: {
    url: 'https://470e8381-3fdc-4a72-b47d-d8186e4607d2.lovableproject.com?forceHideBadge=true',
    cleartext: true
  },
  plugins: {
    SplashScreen: {
      launchShowDuration: 0,
      backgroundColor: "#e0f2fe",
      androidSplashResourceName: "splash",
      androidScaleType: "CENTER_CROP"
    }
  }
};

export default config;
