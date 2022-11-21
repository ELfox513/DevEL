.class public Ly5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly5/b$c;,
        Ly5/b$b;
    }
.end annotation


# static fields
.field public static final d:Ly5/b$c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ly5/b$b;

.field public c:Ly5/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly5/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly5/b$c;-><init>(Ly5/b$a;)V

    sput-object v0, Ly5/b;->d:Ly5/b$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ly5/b$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ly5/b;-><init>(Landroid/content/Context;Ly5/b$b;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ly5/b$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly5/b;->a:Landroid/content/Context;

    iput-object p2, p0, Ly5/b;->b:Ly5/b$b;

    sget-object p1, Ly5/b;->d:Ly5/b$c;

    iput-object p1, p0, Ly5/b;->c:Ly5/a;

    invoke-virtual {p0, p3}, Ly5/b;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ly5/b;->c:Ly5/a;

    invoke-interface {v0}, Ly5/a;->d()V

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Ly5/b;->c:Ly5/a;

    invoke-interface {v0}, Ly5/a;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly5/b;->c:Ly5/a;

    invoke-interface {v0}, Ly5/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crashlytics-userlog-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".temp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ly5/b;->b:Ly5/b$b;

    invoke-interface {v1}, Ly5/b$b;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ly5/b;->c:Ly5/a;

    invoke-interface {v0}, Ly5/a;->a()V

    sget-object v0, Ly5/b;->d:Ly5/b$c;

    iput-object v0, p0, Ly5/b;->c:Ly5/a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ly5/b;->a:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "com.crashlytics.CollectCustomLogs"

    invoke-static {v0, v2, v1}, Lx5/g;->k(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    const-string v0, "Preferences requested no custom logs. Aborting log file creation."

    invoke-virtual {p1, v0}, Lu5/f;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Ly5/b;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Ly5/b;->f(Ljava/io/File;I)V

    return-void
.end method

.method public f(Ljava/io/File;I)V
    .locals 1

    new-instance v0, Ly5/d;

    invoke-direct {v0, p1, p2}, Ly5/d;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Ly5/b;->c:Ly5/a;

    return-void
.end method

.method public g(JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ly5/b;->c:Ly5/a;

    invoke-interface {v0, p1, p2, p3}, Ly5/a;->e(JLjava/lang/String;)V

    return-void
.end method
