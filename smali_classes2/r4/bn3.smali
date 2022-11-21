.class public Lr4/bn3;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public a:Lr4/ao3;

.field public b:Z


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/bn3;->a:Lr4/ao3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/bn3;->a:Lr4/ao3;

    return-void
.end method

.method public static d()Lr4/bn3;
    .locals 2

    new-instance v0, Lr4/bn3;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lr4/bn3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static e()Lr4/bn3;
    .locals 2

    new-instance v0, Lr4/bn3;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lr4/bn3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static f()Lr4/bn3;
    .locals 2

    new-instance v0, Lr4/bn3;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lr4/bn3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static g()Lr4/bn3;
    .locals 2

    new-instance v0, Lr4/bn3;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lr4/bn3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static h()Lr4/bn3;
    .locals 2

    new-instance v0, Lr4/bn3;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lr4/bn3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static i()Lr4/an3;
    .locals 2

    new-instance v0, Lr4/an3;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lr4/an3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static j()Lr4/bn3;
    .locals 2

    new-instance v0, Lr4/bn3;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lr4/bn3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static k()Lr4/bn3;
    .locals 2

    new-instance v0, Lr4/bn3;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lr4/bn3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static l()Lr4/bn3;
    .locals 2

    new-instance v0, Lr4/bn3;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lr4/bn3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lr4/ao3;)Lr4/bn3;
    .locals 0

    iput-object p1, p0, Lr4/bn3;->a:Lr4/ao3;

    return-object p0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/bn3;->b:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lr4/bn3;->b:Z

    return v0
.end method
