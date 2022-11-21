.class public final synthetic Ly4/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly4/g2;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic d:Lk5/d;

.field public final synthetic k:Lk5/c$b;

.field public final synthetic p:Lk5/c$a;


# direct methods
.method public synthetic constructor <init>(Ly4/g2;Landroid/app/Activity;Lk5/d;Lk5/c$b;Lk5/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/b2;->a:Ly4/g2;

    iput-object p2, p0, Ly4/b2;->b:Landroid/app/Activity;

    iput-object p3, p0, Ly4/b2;->d:Lk5/d;

    iput-object p4, p0, Ly4/b2;->k:Lk5/c$b;

    iput-object p5, p0, Ly4/b2;->p:Lk5/c$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ly4/b2;->a:Ly4/g2;

    iget-object v1, p0, Ly4/b2;->b:Landroid/app/Activity;

    iget-object v2, p0, Ly4/b2;->d:Lk5/d;

    iget-object v3, p0, Ly4/b2;->k:Lk5/c$b;

    iget-object v4, p0, Ly4/b2;->p:Lk5/c$a;

    invoke-virtual {v0, v1, v2, v3, v4}, Ly4/g2;->b(Landroid/app/Activity;Lk5/d;Lk5/c$b;Lk5/c$a;)V

    return-void
.end method
