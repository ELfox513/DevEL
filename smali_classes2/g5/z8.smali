.class public final synthetic Lg5/z8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/c9;

.field public final synthetic b:Lg5/q3;

.field public final synthetic d:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lg5/c9;Lg5/q3;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/z8;->a:Lg5/c9;

    iput-object p2, p0, Lg5/z8;->b:Lg5/q3;

    iput-object p3, p0, Lg5/z8;->d:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg5/z8;->a:Lg5/c9;

    iget-object v1, p0, Lg5/z8;->b:Lg5/q3;

    iget-object v2, p0, Lg5/z8;->d:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lg5/c9;->d(Lg5/q3;Landroid/app/job/JobParameters;)V

    return-void
.end method
