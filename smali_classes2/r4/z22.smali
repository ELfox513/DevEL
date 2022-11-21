.class public final synthetic Lr4/z22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/c32;

.field public final b:Landroid/view/View;

.field public final c:Lr4/no2;


# direct methods
.method public constructor <init>(Lr4/c32;Landroid/view/View;Lr4/no2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/z22;->a:Lr4/c32;

    iput-object p2, p0, Lr4/z22;->b:Landroid/view/View;

    iput-object p3, p0, Lr4/z22;->c:Lr4/no2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 3

    iget-object v0, p0, Lr4/z22;->a:Lr4/c32;

    iget-object v1, p0, Lr4/z22;->b:Landroid/view/View;

    iget-object v2, p0, Lr4/z22;->c:Lr4/no2;

    invoke-virtual {v0, v1, v2, p1}, Lr4/c32;->e(Landroid/view/View;Lr4/no2;Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
