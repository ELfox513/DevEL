.class public final Lr4/ri0;
.super Lr4/ei0;
.source "SourceFile"


# instance fields
.field public final a:Lk3/b;

.field public final b:Lr4/si0;


# direct methods
.method public constructor <init>(Lk3/b;Lr4/si0;)V
    .locals 0

    invoke-direct {p0}, Lr4/ei0;-><init>()V

    iput-object p1, p0, Lr4/ri0;->a:Lk3/b;

    iput-object p2, p0, Lr4/ri0;->b:Lr4/si0;

    return-void
.end method


# virtual methods
.method public final C(I)V
    .locals 0

    return-void
.end method

.method public final F(Lr4/lt;)V
    .locals 1

    iget-object v0, p0, Lr4/ri0;->a:Lk3/b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lr4/lt;->Y0()Lt2/m;

    move-result-object p1

    invoke-virtual {v0, p1}, Lt2/d;->onAdFailedToLoad(Lt2/m;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lr4/ri0;->a:Lk3/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr4/ri0;->b:Lr4/si0;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lt2/d;->onAdLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
