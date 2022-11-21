.class public final synthetic Lb3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final a:Lb3/y;


# direct methods
.method public constructor <init>(Lb3/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/t;->a:Lb3/y;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lb3/t;->a:Lb3/y;

    invoke-virtual {p1}, Lb3/y;->b()V

    return-void
.end method
