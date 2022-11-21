.class public final Lr0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/c$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq0/c$b;)Lq0/c;
    .locals 4

    new-instance v0, Lr0/b;

    iget-object v1, p1, Lq0/c$b;->a:Landroid/content/Context;

    iget-object v2, p1, Lq0/c$b;->b:Ljava/lang/String;

    iget-object v3, p1, Lq0/c$b;->c:Lq0/c$a;

    iget-boolean p1, p1, Lq0/c$b;->d:Z

    invoke-direct {v0, v1, v2, v3, p1}, Lr0/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lq0/c$a;Z)V

    return-object v0
.end method
