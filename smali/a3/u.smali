.class public final La3/u;
.super La3/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, La3/n;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final l0(Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "AdOverlayParcel is null or does not contain valid overlay type."

    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    const/4 p1, 0x4

    iput p1, p0, La3/n;->E:I

    iget-object p1, p0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
