.class public final synthetic Lr4/lp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lr4/qp1;


# direct methods
.method public constructor <init>(Lr4/qp1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lp1;->a:Lr4/qp1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lr4/lp1;->a:Lr4/qp1;

    invoke-virtual {v0, p1}, Lr4/qp1;->d(Landroid/view/View;)V

    return-void
.end method
