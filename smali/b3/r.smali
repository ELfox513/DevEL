.class public final synthetic Lb3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final a:Lb3/y;


# direct methods
.method public constructor <init>(Lb3/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/r;->a:Lb3/y;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lb3/r;->a:Lb3/y;

    invoke-virtual {p1}, Lb3/y;->b()V

    return-void
.end method
