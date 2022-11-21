.class public final Lr4/u82;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/bb2;

.field public final synthetic b:Lr4/x92;


# direct methods
.method public constructor <init>(Lr4/x92;Lr4/bb2;)V
    .locals 0

    iput-object p1, p0, Lr4/u82;->b:Lr4/x92;

    iput-object p2, p0, Lr4/u82;->a:Lr4/bb2;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    iget-object p2, p0, Lr4/u82;->b:Lr4/x92;

    iget-object p2, p2, Lr4/x92;->c:Lr4/bb2;

    invoke-static {p2}, Lr4/bb2;->O(Lr4/bb2;)Landroid/media/AudioTrack;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lr4/ja;->d(Z)V

    iget-object p1, p0, Lr4/u82;->b:Lr4/x92;

    iget-object p1, p1, Lr4/x92;->c:Lr4/bb2;

    invoke-static {p1}, Lr4/bb2;->N(Lr4/bb2;)Lr4/aq1;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/u82;->b:Lr4/x92;

    iget-object p1, p1, Lr4/x92;->c:Lr4/bb2;

    invoke-static {p1}, Lr4/bb2;->P(Lr4/bb2;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/u82;->b:Lr4/x92;

    iget-object p1, p1, Lr4/x92;->c:Lr4/bb2;

    invoke-static {p1}, Lr4/bb2;->N(Lr4/bb2;)Lr4/aq1;

    move-result-object p1

    invoke-interface {p1}, Lr4/aq1;->zza()V

    :cond_1
    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Lr4/u82;->b:Lr4/x92;

    iget-object v0, v0, Lr4/x92;->c:Lr4/bb2;

    invoke-static {v0}, Lr4/bb2;->O(Lr4/bb2;)Landroid/media/AudioTrack;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lr4/ja;->d(Z)V

    iget-object p1, p0, Lr4/u82;->b:Lr4/x92;

    iget-object p1, p1, Lr4/x92;->c:Lr4/bb2;

    invoke-static {p1}, Lr4/bb2;->N(Lr4/bb2;)Lr4/aq1;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/u82;->b:Lr4/x92;

    iget-object p1, p1, Lr4/x92;->c:Lr4/bb2;

    invoke-static {p1}, Lr4/bb2;->P(Lr4/bb2;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/u82;->b:Lr4/x92;

    iget-object p1, p1, Lr4/x92;->c:Lr4/bb2;

    invoke-static {p1}, Lr4/bb2;->N(Lr4/bb2;)Lr4/aq1;

    move-result-object p1

    invoke-interface {p1}, Lr4/aq1;->zza()V

    :cond_1
    return-void
.end method
