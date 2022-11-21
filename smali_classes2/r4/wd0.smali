.class public final Lr4/wd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lr4/xd0;


# direct methods
.method public constructor <init>(Lr4/xd0;)V
    .locals 0

    iput-object p1, p0, Lr4/wd0;->a:Lr4/xd0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lr4/wd0;->a:Lr4/xd0;

    const-string p2, "Operation denied by user."

    invoke-virtual {p1, p2}, Lr4/fe0;->b(Ljava/lang/String;)V

    return-void
.end method
