.class public final synthetic Lr4/gx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# instance fields
.field public final a:Lr4/ka4;

.field public final b:I


# direct methods
.method public constructor <init>(Lr4/ka4;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/gx2;->a:Lr4/ka4;

    iput p2, p0, Lr4/gx2;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lj5/i;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/gx2;->a:Lr4/ka4;

    iget v1, p0, Lr4/gx2;->b:I

    sget v2, Lr4/hx2;->e:I

    invoke-virtual {p1}, Lj5/i;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/lz2;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v0

    check-cast v0, Lr4/oa4;

    invoke-virtual {v0}, Lr4/uk3;->t()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lr4/lz2;->a([B)Lr4/jz2;

    move-result-object p1

    invoke-virtual {p1, v1}, Lr4/jz2;->c(I)Lr4/jz2;

    invoke-virtual {p1}, Lr4/jz2;->a()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method
