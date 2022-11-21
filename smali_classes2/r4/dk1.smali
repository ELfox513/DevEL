.class public final Lr4/dk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/b20;


# instance fields
.field public final synthetic a:Lr4/al1;

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lr4/al1;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lr4/dk1;->a:Lr4/al1;

    iput-object p2, p0, Lr4/dk1;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lr4/dk1;->a:Lr4/al1;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lr4/dk1;->a:Lr4/al1;

    invoke-interface {v0}, Lr4/al1;->o()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lr4/dk1;->a:Lr4/al1;

    invoke-interface {v0}, Lr4/al1;->m()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final zza()V
    .locals 5

    iget-object v0, p0, Lr4/dk1;->a:Lr4/al1;

    sget-object v1, Lr4/ak1;->y:Lr4/o33;

    invoke-interface {v0}, Lr4/al1;->i()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lr4/dk1;->a:Lr4/al1;

    iget-object v1, p0, Lr4/dk1;->b:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method
