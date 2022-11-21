.class public final Lx1/o;
.super Lx1/t;
.source "SourceFile"


# static fields
.field public static final b:Lx1/o;

.field public static final d:Lx1/o;

.field public static final k:Lx1/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lx1/o;->B(I)Lx1/o;

    move-result-object v0

    sput-object v0, Lx1/o;->b:Lx1/o;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lx1/o;->B(I)Lx1/o;

    move-result-object v0

    sput-object v0, Lx1/o;->d:Lx1/o;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lx1/o;->B(I)Lx1/o;

    move-result-object v0

    sput-object v0, Lx1/o;->k:Lx1/o;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lx1/t;-><init>(I)V

    return-void
.end method

.method public static B(I)Lx1/o;
    .locals 1

    new-instance v0, Lx1/o;

    invoke-direct {v0, p0}, Lx1/o;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getType()Ly1/c;
    .locals 1

    sget-object v0, Ly1/c;->x:Ly1/c;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "float"

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lx1/t;->z()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lx1/t;->z()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "float{0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
