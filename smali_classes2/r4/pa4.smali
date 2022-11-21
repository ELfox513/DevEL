.class public final Lr4/pa4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lr4/pa4;

.field public static final f:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/pa4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr4/pa4;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lr4/pa4;-><init>(IIIF)V

    sput-object v0, Lr4/pa4;->e:Lr4/pa4;

    sget-object v0, Lr4/o94;->a:Lr4/d3;

    sput-object v0, Lr4/pa4;->f:Lr4/d3;

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr4/pa4;->a:I

    iput p2, p0, Lr4/pa4;->b:I

    iput p3, p0, Lr4/pa4;->c:I

    iput p4, p0, Lr4/pa4;->d:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lr4/pa4;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lr4/pa4;

    iget v1, p0, Lr4/pa4;->a:I

    iget v3, p1, Lr4/pa4;->a:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lr4/pa4;->b:I

    iget v3, p1, Lr4/pa4;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lr4/pa4;->c:I

    iget v3, p1, Lr4/pa4;->c:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lr4/pa4;->d:F

    iget p1, p1, Lr4/pa4;->d:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lr4/pa4;->a:I

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/pa4;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/pa4;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/pa4;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
