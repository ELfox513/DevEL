.class public final Lr4/e70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c$b;


# instance fields
.field public final synthetic a:Lr4/vm0;


# direct methods
.method public constructor <init>(Lr4/f70;Lr4/vm0;)V
    .locals 0

    iput-object p2, p0, Lr4/e70;->a:Lr4/vm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final t0(Lt3/b;)V
    .locals 2

    iget-object p1, p0, Lr4/e70;->a:Lr4/vm0;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Connection failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method
