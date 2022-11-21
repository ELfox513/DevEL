.class public final Lr4/b2;
.super Lr4/e2;
.source "SourceFile"


# instance fields
.field public final i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;IILandroid/view/View;)V
    .locals 7

    const-string v2, "Rh7wPiyt0Q0zAefasWAQ/36LhULiVi3U1eCO9K34euxkll+3xBb3q2iaqyDuAy33"

    const-string v3, "Kmv9uscZLQkY9DcwgermeDphrIGnHnQJYdRAudw6Thg="

    const/16 v6, 0x39

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    iput-object p7, p0, Lr4/b2;->i:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lr4/b2;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    sget-object v0, Lr4/rz;->X1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lr4/e2;->b:Lr4/v0;

    invoke-virtual {v1}, Lr4/v0;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lr4/b2;->i:Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lr4/z0;

    invoke-direct {v2, v1}, Lr4/z0;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lr4/ob4;->C()Lr4/nb4;

    move-result-object v1

    iget-object v3, v2, Lr4/z0;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lr4/nb4;->v(J)Lr4/nb4;

    iget-object v3, v2, Lr4/z0;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lr4/nb4;->x(J)Lr4/nb4;

    iget-object v3, v2, Lr4/z0;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lr4/nb4;->z(J)Lr4/nb4;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lr4/z0;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lr4/nb4;->A(J)Lr4/nb4;

    :cond_0
    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    invoke-virtual {v1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v1

    check-cast v1, Lr4/ob4;

    invoke-virtual {v0, v1}, Lr4/za4;->L(Lr4/ob4;)Lr4/za4;

    :cond_1
    return-void
.end method
