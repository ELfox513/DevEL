.class public Lb3/q2;
.super Lb3/n2;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb3/n2;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/View;)Z
    .locals 1

    invoke-super {p0, p1}, Lb3/g;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lb3/o2;->a(Landroid/view/View;)Landroid/view/WindowId;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final h()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public final i()J
    .locals 4

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lb3/p2;->a(Landroid/os/StatFs;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method
