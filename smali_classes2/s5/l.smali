.class public final synthetic Ls5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls5/c0;

.field public final synthetic b:Lq6/b;


# direct methods
.method public synthetic constructor <init>(Ls5/c0;Lq6/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls5/l;->a:Ls5/c0;

    iput-object p2, p0, Ls5/l;->b:Lq6/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ls5/l;->a:Ls5/c0;

    iget-object v1, p0, Ls5/l;->b:Lq6/b;

    invoke-static {v0, v1}, Ls5/n;->h(Ls5/c0;Lq6/b;)V

    return-void
.end method
