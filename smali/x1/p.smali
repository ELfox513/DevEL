.class public final Lx1/p;
.super Lx1/t;
.source "SourceFile"


# static fields
.field public static final b:[Lx1/p;

.field public static final d:Lx1/p;

.field public static final k:Lx1/p;

.field public static final p:Lx1/p;

.field public static final q:Lx1/p;

.field public static final r:Lx1/p;

.field public static final s:Lx1/p;

.field public static final t:Lx1/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1ff

    new-array v0, v0, [Lx1/p;

    sput-object v0, Lx1/p;->b:[Lx1/p;

    const/4 v0, -0x1

    invoke-static {v0}, Lx1/p;->C(I)Lx1/p;

    move-result-object v0

    sput-object v0, Lx1/p;->d:Lx1/p;

    const/4 v0, 0x0

    invoke-static {v0}, Lx1/p;->C(I)Lx1/p;

    move-result-object v0

    sput-object v0, Lx1/p;->k:Lx1/p;

    const/4 v0, 0x1

    invoke-static {v0}, Lx1/p;->C(I)Lx1/p;

    move-result-object v0

    sput-object v0, Lx1/p;->p:Lx1/p;

    const/4 v0, 0x2

    invoke-static {v0}, Lx1/p;->C(I)Lx1/p;

    move-result-object v0

    sput-object v0, Lx1/p;->q:Lx1/p;

    const/4 v0, 0x3

    invoke-static {v0}, Lx1/p;->C(I)Lx1/p;

    move-result-object v0

    sput-object v0, Lx1/p;->r:Lx1/p;

    const/4 v0, 0x4

    invoke-static {v0}, Lx1/p;->C(I)Lx1/p;

    move-result-object v0

    sput-object v0, Lx1/p;->s:Lx1/p;

    const/4 v0, 0x5

    invoke-static {v0}, Lx1/p;->C(I)Lx1/p;

    move-result-object v0

    sput-object v0, Lx1/p;->t:Lx1/p;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lx1/t;-><init>(I)V

    return-void
.end method

.method public static C(I)Lx1/p;
    .locals 4

    const v0, 0x7fffffff

    and-int/2addr v0, p0

    sget-object v1, Lx1/p;->b:[Lx1/p;

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lx1/p;->B()I

    move-result v3

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    new-instance v2, Lx1/p;

    invoke-direct {v2, p0}, Lx1/p;-><init>(I)V

    aput-object v2, v1, v0

    return-object v2
.end method


# virtual methods
.method public B()I
    .locals 1

    invoke-virtual {p0}, Lx1/t;->z()I

    move-result v0

    return v0
.end method

.method public getType()Ly1/c;
    .locals 1

    sget-object v0, Ly1/c;->y:Ly1/c;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "int"

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lx1/t;->z()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lx1/t;->z()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int{0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
