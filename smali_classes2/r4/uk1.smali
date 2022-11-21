.class public final synthetic Lr4/uk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# instance fields
.field public final a:Lr4/yk1;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lr4/yk1;Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/uk1;->a:Lr4/yk1;

    iput-object p2, p0, Lr4/uk1;->b:Landroid/view/View;

    iput-object p3, p0, Lr4/uk1;->c:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lr4/uk1;->a:Lr4/yk1;

    iget-object v1, p0, Lr4/uk1;->b:Landroid/view/View;

    iget-object v2, p0, Lr4/uk1;->c:Landroid/view/WindowManager;

    check-cast p1, Lr4/cs0;

    invoke-virtual {v0, v1, v2, p1, p2}, Lr4/yk1;->b(Landroid/view/View;Landroid/view/WindowManager;Lr4/cs0;Ljava/util/Map;)V

    return-void
.end method
