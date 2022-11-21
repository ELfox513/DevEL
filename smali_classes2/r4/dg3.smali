.class public final Lr4/dg3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lr4/dg3;

.field public static final d:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/dg3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public b:Landroid/media/AudioAttributes;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v6, Lr4/dg3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lr4/dg3;-><init>(IIIILr4/oo2;)V

    sput-object v6, Lr4/dg3;->c:Lr4/dg3;

    sget-object v0, Lr4/hx1;->a:Lr4/d3;

    sput-object v0, Lr4/dg3;->d:Lr4/d3;

    return-void
.end method

.method public synthetic constructor <init>(IIIILr4/oo2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lr4/dg3;->a:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/media/AudioAttributes;
    .locals 4

    iget-object v0, p0, Lr4/dg3;->b:Landroid/media/AudioAttributes;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    sget v2, Lr4/lc;->a:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    invoke-static {v0, v1}, Lr4/cg3;->a(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lr4/dg3;->b:Landroid/media/AudioAttributes;

    :cond_1
    iget-object v0, p0, Lr4/dg3;->b:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    const-class v1, Lr4/dg3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lr4/dg3;

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const v0, 0xef8fb1    # 2.200023E-38f

    return v0
.end method
