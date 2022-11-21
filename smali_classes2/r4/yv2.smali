.class public final Lr4/yv2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/bw2;

.field public final b:Lr4/zv2;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/bw2;

    invoke-direct {v0}, Lr4/bw2;-><init>()V

    iput-object v0, p0, Lr4/yv2;->a:Lr4/bw2;

    new-instance v1, Lr4/zv2;

    invoke-direct {v1, v0}, Lr4/zv2;-><init>(Lr4/xv2;)V

    iput-object v1, p0, Lr4/yv2;->b:Lr4/zv2;

    return-void
.end method


# virtual methods
.method public final a()Lr4/xv2;
    .locals 1

    iget-object v0, p0, Lr4/yv2;->b:Lr4/zv2;

    return-object v0
.end method

.method public final b()Lr4/xv2;
    .locals 1

    iget-object v0, p0, Lr4/yv2;->a:Lr4/bw2;

    return-object v0
.end method
