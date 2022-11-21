.class public final enum Lcom/esotericsoftware/jsonbeans/OutputType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/esotericsoftware/jsonbeans/OutputType;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Ljava/util/regex/Pattern;

.field public static b:Ljava/util/regex/Pattern;

.field public static d:Ljava/util/regex/Pattern;

.field public static final enum javascript:Lcom/esotericsoftware/jsonbeans/OutputType;

.field public static final enum json:Lcom/esotericsoftware/jsonbeans/OutputType;

.field public static final synthetic k:[Lcom/esotericsoftware/jsonbeans/OutputType;

.field public static final enum minimal:Lcom/esotericsoftware/jsonbeans/OutputType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/esotericsoftware/jsonbeans/OutputType;

    const-string v1, "json"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/jsonbeans/OutputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/esotericsoftware/jsonbeans/OutputType;->json:Lcom/esotericsoftware/jsonbeans/OutputType;

    new-instance v1, Lcom/esotericsoftware/jsonbeans/OutputType;

    const-string v3, "javascript"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/esotericsoftware/jsonbeans/OutputType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/esotericsoftware/jsonbeans/OutputType;->javascript:Lcom/esotericsoftware/jsonbeans/OutputType;

    new-instance v3, Lcom/esotericsoftware/jsonbeans/OutputType;

    const-string v5, "minimal"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/esotericsoftware/jsonbeans/OutputType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/esotericsoftware/jsonbeans/OutputType;->minimal:Lcom/esotericsoftware/jsonbeans/OutputType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/esotericsoftware/jsonbeans/OutputType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/esotericsoftware/jsonbeans/OutputType;->k:[Lcom/esotericsoftware/jsonbeans/OutputType;

    const-string v0, "[a-zA-Z_$][a-zA-Z_$0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/jsonbeans/OutputType;->a:Ljava/util/regex/Pattern;

    const-string v0, "[^{}\\[\\],\":\\r\\n\\t ][^:\\r\\n\\t ]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/jsonbeans/OutputType;->b:Ljava/util/regex/Pattern;

    const-string v0, "[^{}\\[\\],\":\\r\\n\\t ][^}\\],\\r\\n\\t ]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/jsonbeans/OutputType;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/OutputType;
    .locals 1

    const-class v0, Lcom/esotericsoftware/jsonbeans/OutputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/esotericsoftware/jsonbeans/OutputType;

    return-object p0
.end method

.method public static values()[Lcom/esotericsoftware/jsonbeans/OutputType;
    .locals 1

    sget-object v0, Lcom/esotericsoftware/jsonbeans/OutputType;->k:[Lcom/esotericsoftware/jsonbeans/OutputType;

    invoke-virtual {v0}, [Lcom/esotericsoftware/jsonbeans/OutputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/esotericsoftware/jsonbeans/OutputType;

    return-object v0
.end method


# virtual methods
.method public quoteName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r"

    const-string v1, "\\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\t"

    const-string v1, "\\t"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/esotericsoftware/jsonbeans/OutputType$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/esotericsoftware/jsonbeans/OutputType;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    sget-object v0, Lcom/esotericsoftware/jsonbeans/OutputType;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public quoteValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r"

    const-string v1, "\\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\t"

    const-string v1, "\\t"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/esotericsoftware/jsonbeans/OutputType;->minimal:Lcom/esotericsoftware/jsonbeans/OutputType;

    if-ne p0, v0, :cond_1

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/esotericsoftware/jsonbeans/OutputType;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
