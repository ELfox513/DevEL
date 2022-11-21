.class public final Lx1/w;
.super Lx1/u;
.source "SourceFile"


# static fields
.field public static final b:Lx1/w;

.field public static final d:Lx1/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lx1/w;->C(J)Lx1/w;

    move-result-object v0

    sput-object v0, Lx1/w;->b:Lx1/w;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lx1/w;->C(J)Lx1/w;

    move-result-object v0

    sput-object v0, Lx1/w;->d:Lx1/w;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx1/u;-><init>(J)V

    return-void
.end method

.method public static C(J)Lx1/w;
    .locals 1

    new-instance v0, Lx1/w;

    invoke-direct {v0, p0, p1}, Lx1/w;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public B()J
    .locals 2

    invoke-virtual {p0}, Lx1/u;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Ly1/c;
    .locals 1

    sget-object v0, Ly1/c;->z:Ly1/c;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "long"

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lx1/u;->A()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lx1/u;->A()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "long{0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lb2/g;->k(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
