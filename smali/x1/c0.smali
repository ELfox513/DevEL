.class public final Lx1/c0;
.super Lx1/t;
.source "SourceFile"


# static fields
.field public static final b:Lx1/c0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lx1/c0;->C(S)Lx1/c0;

    move-result-object v0

    sput-object v0, Lx1/c0;->b:Lx1/c0;

    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    invoke-direct {p0, p1}, Lx1/t;-><init>(I)V

    return-void
.end method

.method public static B(I)Lx1/c0;
    .locals 3

    int-to-short v0, p0

    if-ne v0, p0, :cond_0

    invoke-static {v0}, Lx1/c0;->C(S)Lx1/c0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus short value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static C(S)Lx1/c0;
    .locals 1

    new-instance v0, Lx1/c0;

    invoke-direct {v0, p0}, Lx1/c0;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public getType()Ly1/c;
    .locals 1

    sget-object v0, Ly1/c;->A:Ly1/c;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "short"

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

    const-string v2, "short{0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->g(I)Ljava/lang/String;

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
