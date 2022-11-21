.class public final synthetic Lr4/mp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nm;


# instance fields
.field public final a:Lr4/cs0;


# direct methods
.method public constructor <init>(Lr4/cs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/mp1;->a:Lr4/cs0;

    return-void
.end method


# virtual methods
.method public final Y(Lr4/mm;)V
    .locals 3

    iget-object v0, p0, Lr4/mp1;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v0

    iget-object p1, p1, Lr4/mm;->d:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lr4/st0;->J0(IIZ)V

    return-void
.end method
