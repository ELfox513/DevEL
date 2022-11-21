.class public final Lr4/pi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/hj;


# instance fields
.field public final a:I

.field public final synthetic b:Lr4/qi;


# direct methods
.method public constructor <init>(Lr4/qi;I)V
    .locals 0

    iput-object p1, p0, Lr4/pi;->b:Lr4/qi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lr4/pi;->a:I

    return-void
.end method

.method public static synthetic e(Lr4/pi;)I
    .locals 0

    iget p0, p0, Lr4/pi;->a:I

    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lr4/pi;->b:Lr4/qi;

    iget v1, p0, Lr4/pi;->a:I

    invoke-virtual {v0, v1}, Lr4/qi;->D(I)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lr4/pi;->b:Lr4/qi;

    invoke-virtual {v0}, Lr4/qi;->E()V

    return-void
.end method

.method public final c(J)V
    .locals 2

    iget-object v0, p0, Lr4/pi;->b:Lr4/qi;

    iget v1, p0, Lr4/pi;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lr4/qi;->G(IJ)V

    return-void
.end method

.method public final d(Lr4/jd;Lr4/hf;Z)I
    .locals 2

    iget-object v0, p0, Lr4/pi;->b:Lr4/qi;

    iget v1, p0, Lr4/pi;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lr4/qi;->F(ILr4/jd;Lr4/hf;Z)I

    move-result p1

    return p1
.end method
