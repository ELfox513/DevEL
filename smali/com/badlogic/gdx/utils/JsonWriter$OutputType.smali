.class public final enum Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/JsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/utils/JsonWriter$OutputType;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Ljava/util/regex/Pattern;

.field public static b:Ljava/util/regex/Pattern;

.field public static d:Ljava/util/regex/Pattern;

.field public static final enum javascript:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field public static final enum json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field public static final synthetic k:[Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field public static final enum minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const-string v1, "json"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    new-instance v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const-string v3, "javascript"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->javascript:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    new-instance v3, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const-string v5, "minimal"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->k:[Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const-string v0, "^[a-zA-Z_$][a-zA-Z_$0-9]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->a:Ljava/util/regex/Pattern;

    const-string v0, "^[^\":,}/ ][^:]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->b:Ljava/util/regex/Pattern;

    const-string v0, "^[^\":,{\\[\\]/ ][^}\\],]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->d:Ljava/util/regex/Pattern;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->k:[Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    return-object v0
.end method


# virtual methods
.method public quoteName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->replace(CLjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const/16 v2, 0xd

    const-string v3, "\\r"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->replace(CLjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->replace(CLjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    const-string v3, "\\t"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->replace(CLjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 p1, 0x2

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_0
    const-string v1, "//"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->b:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->replace(CLjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public quoteValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const-string v0, "null"

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Ljava/lang/Number;

    if-nez v2, :cond_3

    instance-of p1, p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x5c

    const-string v3, "\\\\"

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->replace(CLjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    const/16 v3, 0xd

    const-string v4, "\\r"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->replace(CLjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    const-string v4, "\\n"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->replace(CLjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    const-string v4, "\\t"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->replace(CLjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-ne p0, v2, :cond_2

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "//"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\\\""

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->replace(CLjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method
