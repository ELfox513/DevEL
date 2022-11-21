.class public final Ly4/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Ly4/b0;

.field public final c:Ly4/n;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ly4/b0;Ly4/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/y1;->a:Landroid/app/Application;

    iput-object p2, p0, Ly4/y1;->b:Ly4/b0;

    iput-object p3, p0, Ly4/y1;->c:Ly4/n;

    return-void
.end method

.method public static synthetic a(Ly4/y1;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Ly4/y1;->a:Landroid/app/Application;

    return-object p0
.end method

.method public static synthetic b(Ly4/y1;)Ly4/b0;
    .locals 0

    iget-object p0, p0, Ly4/y1;->b:Ly4/b0;

    return-object p0
.end method

.method public static synthetic c(Ly4/y1;)Ly4/n;
    .locals 0

    iget-object p0, p0, Ly4/y1;->c:Ly4/n;

    return-object p0
.end method


# virtual methods
.method public final d(Landroid/app/Activity;Lk5/d;)Ly4/w0;
    .locals 7

    invoke-virtual {p2}, Lk5/d;->a()Lk5/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lk5/a$a;

    iget-object v1, p0, Ly4/y1;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lk5/a$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lk5/a$a;->a()Lk5/a;

    move-result-object v0

    :cond_0
    move-object v4, v0

    new-instance v0, Ly4/z1;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Ly4/z1;-><init>(Ly4/y1;Landroid/app/Activity;Lk5/a;Lk5/d;Ly4/x1;)V

    invoke-static {v0}, Ly4/z1;->a(Ly4/z1;)Ly4/w0;

    move-result-object p1

    return-object p1
.end method
