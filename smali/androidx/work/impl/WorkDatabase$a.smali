.class public Landroidx/work/impl/WorkDatabase$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->s(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/WorkDatabase$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq0/c$b;)Lq0/c;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lq0/c$b;->a(Landroid/content/Context;)Lq0/c$b$a;

    move-result-object v0

    iget-object v1, p1, Lq0/c$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lq0/c$b$a;->c(Ljava/lang/String;)Lq0/c$b$a;

    move-result-object v1

    iget-object p1, p1, Lq0/c$b;->c:Lq0/c$a;

    invoke-virtual {v1, p1}, Lq0/c$b$a;->b(Lq0/c$a;)Lq0/c$b$a;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lq0/c$b$a;->d(Z)Lq0/c$b$a;

    new-instance p1, Lr0/c;

    invoke-direct {p1}, Lr0/c;-><init>()V

    invoke-virtual {v0}, Lq0/c$b$a;->a()Lq0/c$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/c;->a(Lq0/c$b;)Lq0/c;

    move-result-object p1

    return-object p1
.end method
