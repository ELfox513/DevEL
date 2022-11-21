.class public final Lr4/r5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lr4/r5;

.field public static final g:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/r5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:F

.field public final e:F


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v9, Lr4/r5;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const v7, -0x800001

    const v8, -0x800001

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lr4/r5;-><init>(JJJFF)V

    sput-object v9, Lr4/r5;->f:Lr4/r5;

    sget-object v0, Lr4/q5;->a:Lr4/d3;

    sput-object v0, Lr4/r5;->g:Lr4/d3;

    return-void
.end method

.method public constructor <init>(JJJFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lr4/r5;->a:J

    iput-wide p1, p0, Lr4/r5;->b:J

    iput-wide p1, p0, Lr4/r5;->c:J

    const p1, -0x800001

    iput p1, p0, Lr4/r5;->d:F

    iput p1, p0, Lr4/r5;->e:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lr4/r5;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lr4/r5;

    iget-wide v1, p1, Lr4/r5;->a:J

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const-wide v0, -0x7fffffff7fffffffL    # -1.060997896E-314

    long-to-int v1, v0

    mul-int/lit8 v0, v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const v1, -0x800001

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
