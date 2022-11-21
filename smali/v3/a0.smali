.class public final Lv3/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lv3/b0;


# direct methods
.method public constructor <init>(Lv3/b0;)V
    .locals 0

    iput-object p1, p0, Lv3/a0;->a:Lv3/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lv3/a0;->a:Lv3/b0;

    iget-object v0, v0, Lv3/b0;->a:Lv3/c0;

    invoke-static {v0}, Lv3/c0;->a(Lv3/c0;)Lu3/a$f;

    move-result-object v0

    iget-object v1, p0, Lv3/a0;->a:Lv3/b0;

    iget-object v1, v1, Lv3/b0;->a:Lv3/c0;

    invoke-static {v1}, Lv3/c0;->a(Lv3/c0;)Lu3/a$f;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " disconnecting because it was signed out."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lu3/a$f;->b(Ljava/lang/String;)V

    return-void
.end method
