.class public final Lr4/a3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public final b:Lr4/y2;

.field public c:Lr4/z2;

.field public d:I

.field public e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lr4/z2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lr4/a3;->e:F

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/a3;->a:Landroid/media/AudioManager;

    iput-object p3, p0, Lr4/a3;->c:Lr4/z2;

    new-instance p1, Lr4/y2;

    invoke-direct {p1, p0, p2}, Lr4/y2;-><init>(Lr4/a3;Landroid/os/Handler;)V

    iput-object p1, p0, Lr4/a3;->b:Lr4/y2;

    const/4 p1, 0x0

    iput p1, p0, Lr4/a3;->d:I

    return-void
.end method

.method public static synthetic d(Lr4/a3;I)V
    .locals 2

    const/4 v0, -0x3

    const/4 v1, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown focus change type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioFocusManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lr4/a3;->f(I)V

    invoke-virtual {p0, v0}, Lr4/a3;->g(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lr4/a3;->g(I)V

    invoke-virtual {p0}, Lr4/a3;->e()V

    return-void

    :cond_2
    if-eq p1, v1, :cond_3

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lr4/a3;->f(I)V

    return-void

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr4/a3;->g(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lr4/a3;->f(I)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lr4/a3;->e:F

    return v0
.end method

.method public final b(ZI)I
    .locals 0

    invoke-virtual {p0}, Lr4/a3;->e()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/a3;->c:Lr4/z2;

    invoke-virtual {p0}, Lr4/a3;->e()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Lr4/a3;->d:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lr4/lc;->a:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lr4/a3;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lr4/a3;->b:Lr4/y2;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/a3;->f(I)V

    return-void
.end method

.method public final f(I)V
    .locals 1

    iget v0, p0, Lr4/a3;->d:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lr4/a3;->d:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Lr4/a3;->e:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lr4/a3;->e:F

    iget-object p1, p0, Lr4/a3;->c:Lr4/z2;

    if-eqz p1, :cond_3

    check-cast p1, Lr4/n7;

    iget-object p1, p1, Lr4/n7;->a:Lr4/q7;

    invoke-static {p1}, Lr4/q7;->C(Lr4/q7;)V

    :cond_3
    return-void
.end method

.method public final g(I)V
    .locals 3

    iget-object v0, p0, Lr4/a3;->c:Lr4/z2;

    if-eqz v0, :cond_0

    check-cast v0, Lr4/n7;

    iget-object v1, v0, Lr4/n7;->a:Lr4/q7;

    invoke-virtual {v1}, Lr4/q7;->n()Z

    move-result v1

    iget-object v0, v0, Lr4/n7;->a:Lr4/q7;

    invoke-static {v1, p1}, Lr4/q7;->J(ZI)I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lr4/q7;->F(Lr4/q7;ZII)V

    :cond_0
    return-void
.end method
