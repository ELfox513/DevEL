.class public final synthetic La3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:La3/m;

.field public final b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(La3/m;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/l;->a:La3/m;

    iput-object p2, p0, La3/l;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, La3/l;->a:La3/m;

    iget-object v1, p0, La3/l;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, La3/m;->c:La3/n;

    iget-object v0, v0, La3/n;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
