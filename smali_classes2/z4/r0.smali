.class public Lz4/r0;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public a:Lz4/r1;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lz4/r0;->a:Lz4/r1;

    return-void
.end method

.method public static a()Lz4/r0;
    .locals 2

    new-instance v0, Lz4/r0;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lz4/r0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lz4/r0;
    .locals 2

    new-instance v0, Lz4/r0;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lz4/r0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Lz4/s0;
    .locals 2

    new-instance v0, Lz4/s0;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lz4/s0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
