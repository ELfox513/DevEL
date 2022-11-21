.class public final synthetic Lr4/vx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/zx;

.field public final b:Ly2/c;


# direct methods
.method public constructor <init>(Lr4/zx;Ly2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/vx;->a:Lr4/zx;

    iput-object p2, p0, Lr4/vx;->b:Ly2/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/vx;->a:Lr4/zx;

    iget-object v1, p0, Lr4/vx;->b:Ly2/c;

    invoke-virtual {v0, v1}, Lr4/zx;->k(Ly2/c;)V

    return-void
.end method
