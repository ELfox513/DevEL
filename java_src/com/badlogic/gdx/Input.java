package com.badlogic.gdx;

import com.badlogic.gdx.utils.ObjectIntMap;
import com.prineside.tdi2.Config;
/* loaded from: classes.dex */
public interface Input {

    /* loaded from: classes.dex */
    public static class Buttons {
        public static final int BACK = 3;
        public static final int FORWARD = 4;
        public static final int LEFT = 0;
        public static final int MIDDLE = 2;
        public static final int RIGHT = 1;
    }

    /* loaded from: classes.dex */
    public static class Keys {

        /* renamed from: A */
        public static final int f3125A = 29;
        public static final int ALT_LEFT = 57;
        public static final int ALT_RIGHT = 58;
        public static final int ANY_KEY = -1;
        public static final int APOSTROPHE = 75;

        /* renamed from: AT */
        public static final int f3126AT = 77;

        /* renamed from: B */
        public static final int f3127B = 30;
        public static final int BACK = 4;
        public static final int BACKSLASH = 73;
        public static final int BACKSPACE = 67;
        public static final int BUTTON_A = 96;
        public static final int BUTTON_B = 97;
        public static final int BUTTON_C = 98;
        public static final int BUTTON_CIRCLE = 255;
        public static final int BUTTON_L1 = 102;
        public static final int BUTTON_L2 = 104;
        public static final int BUTTON_MODE = 110;
        public static final int BUTTON_R1 = 103;
        public static final int BUTTON_R2 = 105;
        public static final int BUTTON_SELECT = 109;
        public static final int BUTTON_START = 108;
        public static final int BUTTON_THUMBL = 106;
        public static final int BUTTON_THUMBR = 107;
        public static final int BUTTON_X = 99;
        public static final int BUTTON_Y = 100;
        public static final int BUTTON_Z = 101;

        /* renamed from: C */
        public static final int f3128C = 31;
        public static final int CALL = 5;
        public static final int CAMERA = 27;
        public static final int CAPS_LOCK = 115;
        public static final int CENTER = 23;
        public static final int CLEAR = 28;
        public static final int COLON = 243;
        public static final int COMMA = 55;
        public static final int CONTROL_LEFT = 129;
        public static final int CONTROL_RIGHT = 130;

        /* renamed from: D */
        public static final int f3129D = 32;
        public static final int DEL = 67;
        public static final int DOWN = 20;
        public static final int DPAD_CENTER = 23;
        public static final int DPAD_DOWN = 20;
        public static final int DPAD_LEFT = 21;
        public static final int DPAD_RIGHT = 22;
        public static final int DPAD_UP = 19;

        /* renamed from: E */
        public static final int f3130E = 33;
        public static final int END = 123;
        public static final int ENDCALL = 6;
        public static final int ENTER = 66;
        public static final int ENVELOPE = 65;
        public static final int EQUALS = 70;
        public static final int ESCAPE = 111;
        public static final int EXPLORER = 64;

        /* renamed from: F */
        public static final int f3131F = 34;

        /* renamed from: F1 */
        public static final int f3132F1 = 131;
        public static final int F10 = 140;
        public static final int F11 = 141;
        public static final int F12 = 142;
        public static final int F13 = 183;
        public static final int F14 = 184;
        public static final int F15 = 185;
        public static final int F16 = 186;
        public static final int F17 = 187;
        public static final int F18 = 188;
        public static final int F19 = 189;

        /* renamed from: F2 */
        public static final int f3133F2 = 132;
        public static final int F20 = 190;
        public static final int F21 = 191;
        public static final int F22 = 192;
        public static final int F23 = 193;
        public static final int F24 = 194;

        /* renamed from: F3 */
        public static final int f3134F3 = 133;

        /* renamed from: F4 */
        public static final int f3135F4 = 134;

        /* renamed from: F5 */
        public static final int f3136F5 = 135;

        /* renamed from: F6 */
        public static final int f3137F6 = 136;

        /* renamed from: F7 */
        public static final int f3138F7 = 137;

        /* renamed from: F8 */
        public static final int f3139F8 = 138;

        /* renamed from: F9 */
        public static final int f3140F9 = 139;
        public static final int FOCUS = 80;
        public static final int FORWARD_DEL = 112;

        /* renamed from: G */
        public static final int f3141G = 35;
        public static final int GRAVE = 68;

        /* renamed from: H */
        public static final int f3142H = 36;
        public static final int HEADSETHOOK = 79;
        public static final int HOME = 3;

        /* renamed from: I */
        public static final int f3143I = 37;
        public static final int INSERT = 124;

        /* renamed from: J */
        public static final int f3144J = 38;

        /* renamed from: K */
        public static final int f3145K = 39;

        /* renamed from: L */
        public static final int f3146L = 40;
        public static final int LEFT = 21;
        public static final int LEFT_BRACKET = 71;

        /* renamed from: M */
        public static final int f3147M = 41;
        public static final int MAX_KEYCODE = 255;
        public static final int MEDIA_FAST_FORWARD = 90;
        public static final int MEDIA_NEXT = 87;
        public static final int MEDIA_PLAY_PAUSE = 85;
        public static final int MEDIA_PREVIOUS = 88;
        public static final int MEDIA_REWIND = 89;
        public static final int MEDIA_STOP = 86;
        public static final int MENU = 82;
        public static final int META_ALT_LEFT_ON = 16;
        public static final int META_ALT_ON = 2;
        public static final int META_ALT_RIGHT_ON = 32;
        public static final int META_SHIFT_LEFT_ON = 64;
        public static final int META_SHIFT_ON = 1;
        public static final int META_SHIFT_RIGHT_ON = 128;
        public static final int META_SYM_ON = 4;
        public static final int MINUS = 69;
        public static final int MUTE = 91;

        /* renamed from: N */
        public static final int f3148N = 42;
        public static final int NOTIFICATION = 83;
        public static final int NUM = 78;
        public static final int NUMPAD_0 = 144;
        public static final int NUMPAD_1 = 145;
        public static final int NUMPAD_2 = 146;
        public static final int NUMPAD_3 = 147;
        public static final int NUMPAD_4 = 148;
        public static final int NUMPAD_5 = 149;
        public static final int NUMPAD_6 = 150;
        public static final int NUMPAD_7 = 151;
        public static final int NUMPAD_8 = 152;
        public static final int NUMPAD_9 = 153;
        public static final int NUMPAD_ADD = 157;
        public static final int NUMPAD_COMMA = 159;
        public static final int NUMPAD_DIVIDE = 154;
        public static final int NUMPAD_DOT = 158;
        public static final int NUMPAD_ENTER = 160;
        public static final int NUMPAD_EQUALS = 161;
        public static final int NUMPAD_LEFT_PAREN = 162;
        public static final int NUMPAD_MULTIPLY = 155;
        public static final int NUMPAD_RIGHT_PAREN = 163;
        public static final int NUMPAD_SUBTRACT = 156;
        public static final int NUM_0 = 7;
        public static final int NUM_1 = 8;
        public static final int NUM_2 = 9;
        public static final int NUM_3 = 10;
        public static final int NUM_4 = 11;
        public static final int NUM_5 = 12;
        public static final int NUM_6 = 13;
        public static final int NUM_7 = 14;
        public static final int NUM_8 = 15;
        public static final int NUM_9 = 16;
        public static final int NUM_LOCK = 143;

        /* renamed from: O */
        public static final int f3149O = 43;

        /* renamed from: P */
        public static final int f3150P = 44;
        public static final int PAGE_DOWN = 93;
        public static final int PAGE_UP = 92;
        public static final int PAUSE = 121;
        public static final int PERIOD = 56;
        public static final int PICTSYMBOLS = 94;
        public static final int PLUS = 81;
        public static final int POUND = 18;
        public static final int POWER = 26;
        public static final int PRINT_SCREEN = 120;

        /* renamed from: Q */
        public static final int f3151Q = 45;

        /* renamed from: R */
        public static final int f3152R = 46;
        public static final int RIGHT = 22;
        public static final int RIGHT_BRACKET = 72;

        /* renamed from: S */
        public static final int f3153S = 47;
        public static final int SCROLL_LOCK = 116;
        public static final int SEARCH = 84;
        public static final int SEMICOLON = 74;
        public static final int SHIFT_LEFT = 59;
        public static final int SHIFT_RIGHT = 60;
        public static final int SLASH = 76;
        public static final int SOFT_LEFT = 1;
        public static final int SOFT_RIGHT = 2;
        public static final int SPACE = 62;
        public static final int STAR = 17;
        public static final int SWITCH_CHARSET = 95;
        public static final int SYM = 63;

        /* renamed from: T */
        public static final int f3154T = 48;
        public static final int TAB = 61;

        /* renamed from: U */
        public static final int f3155U = 49;
        public static final int UNKNOWN = 0;

        /* renamed from: UP */
        public static final int f3156UP = 19;

        /* renamed from: V */
        public static final int f3157V = 50;
        public static final int VOLUME_DOWN = 25;
        public static final int VOLUME_UP = 24;

        /* renamed from: W */
        public static final int f3158W = 51;

        /* renamed from: X */
        public static final int f3159X = 52;

        /* renamed from: Y */
        public static final int f3160Y = 53;

        /* renamed from: Z */
        public static final int f3161Z = 54;

        /* renamed from: a */
        public static ObjectIntMap<String> f3162a;

        /* renamed from: a */
        public static void m24477a() {
            f3162a = new ObjectIntMap<>();
            for (int i = 0; i < 256; i++) {
                String keys = toString(i);
                if (keys != null) {
                    f3162a.put(keys, i);
                }
            }
        }

        public static String toString(int i) {
            if (i >= 0) {
                if (i <= 255) {
                    if (i != 115) {
                        if (i != 116) {
                            if (i != 120) {
                                if (i != 121) {
                                    if (i != 123) {
                                        if (i != 124) {
                                            if (i != 243) {
                                                switch (i) {
                                                    case 0:
                                                        return "Unknown";
                                                    case 1:
                                                        return "Soft Left";
                                                    case 2:
                                                        return "Soft Right";
                                                    case 3:
                                                        return "Home";
                                                    case 4:
                                                        return "Back";
                                                    case 5:
                                                        return "Call";
                                                    case 6:
                                                        return "End Call";
                                                    case 7:
                                                        return "0";
                                                    case 8:
                                                        return Config.SITE_API_VERSION;
                                                    case 9:
                                                        return "2";
                                                    case 10:
                                                        return "3";
                                                    case 11:
                                                        return "4";
                                                    case 12:
                                                        return "5";
                                                    case 13:
                                                        return "6";
                                                    case 14:
                                                        return "7";
                                                    case 15:
                                                        return "8";
                                                    case 16:
                                                        return "9";
                                                    case 17:
                                                        return "*";
                                                    case 18:
                                                        return "#";
                                                    case 19:
                                                        return "Up";
                                                    case 20:
                                                        return "Down";
                                                    case 21:
                                                        return "Left";
                                                    case 22:
                                                        return "Right";
                                                    case 23:
                                                        return "Center";
                                                    case 24:
                                                        return "Volume Up";
                                                    case 25:
                                                        return "Volume Down";
                                                    case 26:
                                                        return "Power";
                                                    case 27:
                                                        return "Camera";
                                                    case 28:
                                                        return "Clear";
                                                    case 29:
                                                        return "A";
                                                    case 30:
                                                        return "B";
                                                    case 31:
                                                        return "C";
                                                    case 32:
                                                        return "D";
                                                    case 33:
                                                        return "E";
                                                    case 34:
                                                        return "F";
                                                    case 35:
                                                        return "G";
                                                    case 36:
                                                        return "H";
                                                    case 37:
                                                        return "I";
                                                    case 38:
                                                        return "J";
                                                    case 39:
                                                        return "K";
                                                    case 40:
                                                        return "L";
                                                    case 41:
                                                        return "M";
                                                    case 42:
                                                        return "N";
                                                    case 43:
                                                        return "O";
                                                    case 44:
                                                        return "P";
                                                    case 45:
                                                        return "Q";
                                                    case 46:
                                                        return "R";
                                                    case 47:
                                                        return "S";
                                                    case 48:
                                                        return "T";
                                                    case 49:
                                                        return "U";
                                                    case 50:
                                                        return "V";
                                                    case 51:
                                                        return "W";
                                                    case 52:
                                                        return "X";
                                                    case 53:
                                                        return "Y";
                                                    case 54:
                                                        return "Z";
                                                    case 55:
                                                        return ",";
                                                    case 56:
                                                        return ".";
                                                    case 57:
                                                        return "L-Alt";
                                                    case 58:
                                                        return "R-Alt";
                                                    case 59:
                                                        return "L-Shift";
                                                    case 60:
                                                        return "R-Shift";
                                                    case 61:
                                                        return "Tab";
                                                    case 62:
                                                        return "Space";
                                                    case 63:
                                                        return "SYM";
                                                    case 64:
                                                        return "Explorer";
                                                    case 65:
                                                        return "Envelope";
                                                    case 66:
                                                        return "Enter";
                                                    case 67:
                                                        return "Delete";
                                                    case 68:
                                                        return "`";
                                                    case 69:
                                                        return "-";
                                                    case 70:
                                                        return "=";
                                                    case 71:
                                                        return "[";
                                                    case 72:
                                                        return "]";
                                                    case 73:
                                                        return "\\";
                                                    case 74:
                                                        return ";";
                                                    case 75:
                                                        return "'";
                                                    case 76:
                                                        return "/";
                                                    case 77:
                                                        return "@";
                                                    case 78:
                                                        return "Num";
                                                    case 79:
                                                        return "Headset Hook";
                                                    case 80:
                                                        return "Focus";
                                                    case 81:
                                                        return "Plus";
                                                    case 82:
                                                        return "Menu";
                                                    case 83:
                                                        return "Notification";
                                                    case 84:
                                                        return "Search";
                                                    case 85:
                                                        return "Play/Pause";
                                                    case 86:
                                                        return "Stop Media";
                                                    case 87:
                                                        return "Next Media";
                                                    case 88:
                                                        return "Prev Media";
                                                    case 89:
                                                        return "Rewind";
                                                    case 90:
                                                        return "Fast Forward";
                                                    case 91:
                                                        return "Mute";
                                                    case 92:
                                                        return "Page Up";
                                                    case 93:
                                                        return "Page Down";
                                                    case 94:
                                                        return "PICTSYMBOLS";
                                                    case 95:
                                                        return "SWITCH_CHARSET";
                                                    case 96:
                                                        return "A Button";
                                                    case 97:
                                                        return "B Button";
                                                    case 98:
                                                        return "C Button";
                                                    case 99:
                                                        return "X Button";
                                                    case 100:
                                                        return "Y Button";
                                                    case 101:
                                                        return "Z Button";
                                                    case 102:
                                                        return "L1 Button";
                                                    case 103:
                                                        return "R1 Button";
                                                    case 104:
                                                        return "L2 Button";
                                                    case 105:
                                                        return "R2 Button";
                                                    case 106:
                                                        return "Left Thumb";
                                                    case 107:
                                                        return "Right Thumb";
                                                    case 108:
                                                        return "Start";
                                                    case 109:
                                                        return "Select";
                                                    case 110:
                                                        return "Button Mode";
                                                    case 111:
                                                        return "Escape";
                                                    case 112:
                                                        return "Forward Delete";
                                                    default:
                                                        switch (i) {
                                                            case 129:
                                                                return "L-Ctrl";
                                                            case 130:
                                                                return "R-Ctrl";
                                                            case 131:
                                                                return "F1";
                                                            case 132:
                                                                return "F2";
                                                            case 133:
                                                                return "F3";
                                                            case 134:
                                                                return "F4";
                                                            case 135:
                                                                return "F5";
                                                            case 136:
                                                                return "F6";
                                                            case 137:
                                                                return "F7";
                                                            case 138:
                                                                return "F8";
                                                            case 139:
                                                                return "F9";
                                                            case 140:
                                                                return "F10";
                                                            case 141:
                                                                return "F11";
                                                            case 142:
                                                                return "F12";
                                                            case 143:
                                                                return "Num Lock";
                                                            case 144:
                                                                return "Numpad 0";
                                                            case 145:
                                                                return "Numpad 1";
                                                            case 146:
                                                                return "Numpad 2";
                                                            case 147:
                                                                return "Numpad 3";
                                                            case 148:
                                                                return "Numpad 4";
                                                            case 149:
                                                                return "Numpad 5";
                                                            case 150:
                                                                return "Numpad 6";
                                                            case 151:
                                                                return "Numpad 7";
                                                            case 152:
                                                                return "Numpad 8";
                                                            case 153:
                                                                return "Numpad 9";
                                                            case 154:
                                                                return "Num /";
                                                            case 155:
                                                                return "Num *";
                                                            case 156:
                                                                return "Num -";
                                                            case 157:
                                                                return "Num +";
                                                            case 158:
                                                                return "Num .";
                                                            case 159:
                                                                return "Num ,";
                                                            case 160:
                                                                return "Num Enter";
                                                            case 161:
                                                                return "Num =";
                                                            case 162:
                                                                return "Num (";
                                                            case 163:
                                                                return "Num )";
                                                            default:
                                                                switch (i) {
                                                                    case 183:
                                                                        return "F13";
                                                                    case 184:
                                                                        return "F14";
                                                                    case 185:
                                                                        return "F15";
                                                                    case 186:
                                                                        return "F16";
                                                                    case 187:
                                                                        return "F17";
                                                                    case 188:
                                                                        return "F18";
                                                                    case 189:
                                                                        return "F19";
                                                                    case 190:
                                                                        return "F20";
                                                                    case 191:
                                                                        return "F21";
                                                                    case 192:
                                                                        return "F22";
                                                                    case 193:
                                                                        return "F23";
                                                                    case 194:
                                                                        return "F24";
                                                                    default:
                                                                        return null;
                                                                }
                                                        }
                                                }
                                            }
                                            return ":";
                                        }
                                        return "Insert";
                                    }
                                    return "End";
                                }
                                return "Pause";
                            }
                            return "Print";
                        }
                        return "Scroll Lock";
                    }
                    return "Caps Lock";
                }
                throw new IllegalArgumentException("keycode cannot be greater than 255, keycode: " + i);
            }
            throw new IllegalArgumentException("keycode cannot be negative, keycode: " + i);
        }

        public static int valueOf(String str) {
            if (f3162a == null) {
                m24477a();
            }
            return f3162a.get(str, -1);
        }
    }

    /* loaded from: classes.dex */
    public enum OnscreenKeyboardType {
        Default,
        NumberPad,
        PhonePad,
        Email,
        Password,
        URI
    }

    /* loaded from: classes.dex */
    public enum Orientation {
        Landscape,
        Portrait
    }

    /* loaded from: classes.dex */
    public enum Peripheral {
        HardwareKeyboard,
        OnscreenKeyboard,
        MultitouchScreen,
        Accelerometer,
        Compass,
        Vibrator,
        HapticFeedback,
        Gyroscope,
        RotationVector,
        Pressure
    }

    /* loaded from: classes.dex */
    public interface TextInputListener {
        void canceled();

        void input(String str);
    }

    /* loaded from: classes.dex */
    public enum VibrationType {
        LIGHT,
        MEDIUM,
        HEAVY
    }

    float getAccelerometerX();

    float getAccelerometerY();

    float getAccelerometerZ();

    float getAzimuth();

    long getCurrentEventTime();

    int getDeltaX();

    int getDeltaX(int i);

    int getDeltaY();

    int getDeltaY(int i);

    float getGyroscopeX();

    float getGyroscopeY();

    float getGyroscopeZ();

    InputProcessor getInputProcessor();

    int getMaxPointers();

    Orientation getNativeOrientation();

    float getPitch();

    float getPressure();

    float getPressure(int i);

    float getRoll();

    int getRotation();

    void getRotationMatrix(float[] fArr);

    void getTextInput(TextInputListener textInputListener, String str, String str2, String str3);

    void getTextInput(TextInputListener textInputListener, String str, String str2, String str3, OnscreenKeyboardType onscreenKeyboardType);

    int getX();

    int getX(int i);

    int getY();

    int getY(int i);

    boolean isButtonJustPressed(int i);

    boolean isButtonPressed(int i);

    @Deprecated
    boolean isCatchBackKey();

    boolean isCatchKey(int i);

    @Deprecated
    boolean isCatchMenuKey();

    boolean isCursorCatched();

    boolean isKeyJustPressed(int i);

    boolean isKeyPressed(int i);

    boolean isPeripheralAvailable(Peripheral peripheral);

    boolean isTouched();

    boolean isTouched(int i);

    boolean justTouched();

    @Deprecated
    void setCatchBackKey(boolean z);

    void setCatchKey(int i, boolean z);

    @Deprecated
    void setCatchMenuKey(boolean z);

    void setCursorCatched(boolean z);

    void setCursorPosition(int i, int i2);

    void setInputProcessor(InputProcessor inputProcessor);

    void setOnscreenKeyboardVisible(boolean z);

    void setOnscreenKeyboardVisible(boolean z, OnscreenKeyboardType onscreenKeyboardType);

    void vibrate(int i);

    void vibrate(int i, int i2, boolean z);

    void vibrate(int i, boolean z);

    void vibrate(VibrationType vibrationType);
}
