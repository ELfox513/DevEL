.class public final Lb2/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/Writer;)Ljava/io/PrintWriter;
    .locals 1

    instance-of v0, p0, Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/PrintWriter;

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method
