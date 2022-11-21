.class public final Lg5/r8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/ComponentName;

.field public final synthetic b:Lg5/v8;


# direct methods
.method public constructor <init>(Lg5/v8;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lg5/r8;->b:Lg5/v8;

    iput-object p2, p0, Lg5/r8;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg5/r8;->b:Lg5/v8;

    iget-object v0, v0, Lg5/v8;->d:Lg5/w8;

    iget-object v1, p0, Lg5/r8;->a:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lg5/w8;->J(Lg5/w8;Landroid/content/ComponentName;)V

    return-void
.end method
