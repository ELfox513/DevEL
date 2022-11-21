.class public final Lr4/o1;
.super Lr4/e2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V
    .locals 7

    const-string v2, "Mx1UeFqV1fjeaaqnMs31Cpnz92KBTGXH/Fg2ftteXVEThFuI1yrtq0+LdsZyqokl"

    const-string v3, "Yj2yffKjPUt0Mx1uRMPIz4KPVLEfX/KYQGpvpNjX0eY="

    const/16 v6, 0x4c

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lr4/e2;->b:Lr4/v0;

    invoke-virtual {v3}, Lr4/v0;->c()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lr4/e2;->e:Lr4/za4;

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v2, v1}, Lr4/za4;->d0(I)Lr4/za4;

    return-void
.end method
