.class public final synthetic Lr4/sk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# instance fields
.field public final a:Lr4/yk1;

.field public final b:Landroid/view/WindowManager;

.field public final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lr4/yk1;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/sk1;->a:Lr4/yk1;

    iput-object p2, p0, Lr4/sk1;->b:Landroid/view/WindowManager;

    iput-object p3, p0, Lr4/sk1;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lr4/sk1;->a:Lr4/yk1;

    iget-object v1, p0, Lr4/sk1;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lr4/sk1;->c:Landroid/view/View;

    check-cast p1, Lr4/cs0;

    invoke-virtual {v0, v1, v2, p1, p2}, Lr4/yk1;->d(Landroid/view/WindowManager;Landroid/view/View;Lr4/cs0;Ljava/util/Map;)V

    return-void
.end method
