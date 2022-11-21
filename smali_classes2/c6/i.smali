.class public Lc6/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/h;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc6/i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc6/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".com.google.firebase.crashlytics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc6/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".com.google.firebase.crashlytics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc6/i;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/io/File;)Ljava/io/File;
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    const-string v0, "Couldn\'t create file"

    invoke-virtual {p1, v0}, Lu5/f;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    const-string v0, "Null File"

    invoke-virtual {p1, v0}, Lu5/f;->k(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
