.class public final Lr4/y1;
.super Lr4/e2;
.source "SourceFile"


# instance fields
.field public final i:Lr4/c1;

.field public j:J


# direct methods
.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;IILr4/c1;)V
    .locals 7

    const-string v2, "BF4UgSmqTS0MLe4qitQi/hj1jIQ+0vLIJEn32u0TtZn0VL9j15ZHt04Do4ADy833"

    const-string v3, "Yw5N4XiXXiTiwJwrJ8hW/AfPIwRQ2KMfiYKb9xu8vYQ="

    const/16 v6, 0x35

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    iput-object p7, p0, Lr4/y1;->i:Lr4/c1;

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Lr4/c1;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lr4/y1;->j:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lr4/y1;->i:Lr4/c1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    iget-object v1, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lr4/y1;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/za4;->E(J)Lr4/za4;

    :cond_0
    return-void
.end method
