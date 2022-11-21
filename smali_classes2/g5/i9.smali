.class public final Lg5/i9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/na;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lg5/na;)V
    .locals 0

    iput-object p1, p0, Lg5/i9;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lg5/i9;->a:Lg5/na;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg5/i9;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    iget-object v1, p0, Lg5/i9;->a:Lg5/na;

    invoke-virtual {v0, v1}, Lg5/i7;->D(Lg5/c6;)V

    return-void
.end method
