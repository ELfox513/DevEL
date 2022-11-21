.class public final synthetic Lr4/i12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final a:La3/n;


# direct methods
.method public constructor <init>(La3/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/i12;->a:La3/n;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lr4/i12;->a:La3/n;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, La3/n;->a()V

    :cond_0
    return-void
.end method
