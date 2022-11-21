.class public final synthetic Ly4/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk5/c$a;

.field public final synthetic b:Ly4/u1;


# direct methods
.method public synthetic constructor <init>(Lk5/c$a;Ly4/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/d2;->a:Lk5/c$a;

    iput-object p2, p0, Ly4/d2;->b:Ly4/u1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ly4/d2;->a:Lk5/c$a;

    iget-object v1, p0, Ly4/d2;->b:Ly4/u1;

    invoke-virtual {v1}, Ly4/u1;->a()Lk5/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lk5/c$a;->a(Lk5/e;)V

    return-void
.end method
