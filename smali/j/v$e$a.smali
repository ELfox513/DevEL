.class public Lj/v$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/v$e;-><init>(Lj/v;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj/v;

.field public final synthetic b:Lj/v$e;


# direct methods
.method public constructor <init>(Lj/v$e;Lj/v;)V
    .locals 0

    iput-object p1, p0, Lj/v$e$a;->b:Lj/v$e;

    iput-object p2, p0, Lj/v$e$a;->a:Lj/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lj/v$e$a;->b:Lj/v$e;

    iget-object p1, p1, Lj/v$e;->Y:Lj/v;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object p1, p0, Lj/v$e$a;->b:Lj/v$e;

    iget-object p1, p1, Lj/v$e;->Y:Lj/v;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj/v$e$a;->b:Lj/v$e;

    iget-object p4, p1, Lj/v$e;->Y:Lj/v;

    iget-object p1, p1, Lj/v$e;->V:Landroid/widget/ListAdapter;

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object p1, p0, Lj/v$e$a;->b:Lj/v$e;

    invoke-virtual {p1}, Lj/b1;->dismiss()V

    return-void
.end method
