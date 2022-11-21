package com.prineside.luaj.parser;
/* loaded from: classes2.dex */
public interface LuaParserConstants {
    public static final int AND = 29;
    public static final int BREAK = 30;
    public static final int CHAR = 67;
    public static final int CHARSTRING = 62;
    public static final int COMMENT = 17;
    public static final int DBCOLON = 65;
    public static final int DECIMAL = 64;
    public static final int DEFAULT = 0;
    public static final int DIGIT = 55;

    /* renamed from: DO */
    public static final int f8342DO = 31;
    public static final int ELSE = 32;
    public static final int ELSEIF = 33;
    public static final int END = 34;
    public static final int EOF = 0;
    public static final int EXP = 56;
    public static final int FALSE = 35;
    public static final int FLOAT = 53;
    public static final int FNUM = 54;
    public static final int FOR = 36;
    public static final int FUNCTION = 37;
    public static final int GOTO = 38;
    public static final int HEX = 57;
    public static final int HEXDIGIT = 59;
    public static final int HEXEXP = 60;
    public static final int HEXNUM = 58;

    /* renamed from: IF */
    public static final int f8343IF = 39;

    /* renamed from: IN */
    public static final int f8344IN = 40;
    public static final int IN_COMMENT = 1;
    public static final int IN_LC0 = 2;
    public static final int IN_LC1 = 3;
    public static final int IN_LC2 = 4;
    public static final int IN_LC3 = 5;
    public static final int IN_LCN = 6;
    public static final int IN_LS0 = 7;
    public static final int IN_LS1 = 8;
    public static final int IN_LS2 = 9;
    public static final int IN_LS3 = 10;
    public static final int IN_LSN = 11;

    /* renamed from: LF */
    public static final int f8345LF = 68;
    public static final int LOCAL = 41;
    public static final int LONGCOMMENT0 = 18;
    public static final int LONGCOMMENT1 = 19;
    public static final int LONGCOMMENT2 = 20;
    public static final int LONGCOMMENT3 = 21;
    public static final int LONGCOMMENTN = 22;
    public static final int LONGSTRING0 = 23;
    public static final int LONGSTRING1 = 24;
    public static final int LONGSTRING2 = 25;
    public static final int LONGSTRING3 = 26;
    public static final int LONGSTRINGN = 27;
    public static final int NAME = 51;
    public static final int NIL = 42;
    public static final int NOT = 43;
    public static final int NUMBER = 52;

    /* renamed from: OR */
    public static final int f8346OR = 44;
    public static final int QUOTED = 63;
    public static final int REPEAT = 46;
    public static final int RETURN = 45;
    public static final int STRING = 61;
    public static final int THEN = 47;
    public static final int TRUE = 48;
    public static final int UNICODE = 66;
    public static final int UNTIL = 49;
    public static final int WHILE = 50;
    public static final String[] tokenImage = {"<EOF>", "\" \"", "\"\\t\"", "\"\\n\"", "\"\\r\"", "\"\\f\"", "\"--[[\"", "\"--[=[\"", "\"--[==[\"", "\"--[===[\"", "<token of kind 10>", "\"[[\"", "\"[=[\"", "\"[==[\"", "\"[===[\"", "<token of kind 15>", "\"--\"", "<COMMENT>", "\"]]\"", "\"]=]\"", "\"]==]\"", "\"]===]\"", "<LONGCOMMENTN>", "\"]]\"", "\"]=]\"", "\"]==]\"", "\"]===]\"", "<LONGSTRINGN>", "<token of kind 28>", "\"and\"", "\"break\"", "\"do\"", "\"else\"", "\"elseif\"", "\"end\"", "\"false\"", "\"for\"", "\"function\"", "\"goto\"", "\"if\"", "\"in\"", "\"local\"", "\"nil\"", "\"not\"", "\"or\"", "\"return\"", "\"repeat\"", "\"then\"", "\"true\"", "\"until\"", "\"while\"", "<NAME>", "<NUMBER>", "<FLOAT>", "<FNUM>", "<DIGIT>", "<EXP>", "<HEX>", "<HEXNUM>", "<HEXDIGIT>", "<HEXEXP>", "<STRING>", "<CHARSTRING>", "<QUOTED>", "<DECIMAL>", "\"::\"", "<UNICODE>", "<CHAR>", "<LF>", "\"#\"", "\";\"", "\"=\"", "\",\"", "\".\"", "\":\"", "\"(\"", "\")\"", "\"[\"", "\"]\"", "\"...\"", "\"{\"", "\"}\"", "\"+\"", "\"-\"", "\"*\"", "\"/\"", "\"^\"", "\"%\"", "\"..\"", "\"<\"", "\"<=\"", "\">\"", "\">=\"", "\"==\"", "\"~=\""};
}
