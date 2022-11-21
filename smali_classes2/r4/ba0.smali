.class public final Lr4/ba0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Lr4/y90;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/y90<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lr4/v90;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/v90<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lr4/ba0;->a:Ljava/nio/charset/Charset;

    new-instance v0, Lr4/aa0;

    invoke-direct {v0}, Lr4/aa0;-><init>()V

    sput-object v0, Lr4/ba0;->b:Lr4/y90;

    sget-object v0, Lr4/z90;->a:Lr4/v90;

    sput-object v0, Lr4/ba0;->c:Lr4/v90;

    return-void
.end method

.method public static final synthetic a(Lorg/json/JSONObject;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lr4/ba0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
