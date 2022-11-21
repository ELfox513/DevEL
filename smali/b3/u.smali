.class public final synthetic Lb3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final a:Lb3/y;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb3/y;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/u;->a:Lb3/y;

    iput-object p2, p0, Lb3/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lb3/u;->a:Lb3/y;

    iget-object v1, p0, Lb3/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lb3/y;->o(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
