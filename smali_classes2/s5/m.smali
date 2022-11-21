.class public final synthetic Ls5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls5/x;

.field public final synthetic b:Lq6/b;


# direct methods
.method public synthetic constructor <init>(Ls5/x;Lq6/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls5/m;->a:Ls5/x;

    iput-object p2, p0, Ls5/m;->b:Lq6/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ls5/m;->a:Ls5/x;

    iget-object v1, p0, Ls5/m;->b:Lq6/b;

    invoke-static {v0, v1}, Ls5/n;->g(Ls5/x;Lq6/b;)V

    return-void
.end method
