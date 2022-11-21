.class public Ld/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f;->Q()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/f;


# direct methods
.method public constructor <init>(Ld/f;)V
    .locals 0

    iput-object p1, p0, Ld/f$d;->a:Ld/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Ld/f$d;->a:Ld/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ld/f;->L0(Ld0/t1;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
