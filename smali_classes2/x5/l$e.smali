.class public final Lx5/l$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly5/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx5/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Lc6/h;


# direct methods
.method public constructor <init>(Lc6/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/l$e;->a:Lc6/h;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lx5/l$e;->a:Lc6/h;

    invoke-interface {v1}, Lc6/h;->b()Ljava/io/File;

    move-result-object v1

    const-string v2, "log-files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method
