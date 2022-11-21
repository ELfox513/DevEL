.class public final Lg5/h7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb5/i1;

.field public final synthetic b:Lg5/u;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic k:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lb5/i1;Lg5/u;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg5/h7;->k:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lg5/h7;->a:Lb5/i1;

    iput-object p3, p0, Lg5/h7;->b:Lg5/u;

    iput-object p4, p0, Lg5/h7;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lg5/h7;->k:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->I()Lg5/w8;

    move-result-object v0

    iget-object v1, p0, Lg5/h7;->a:Lb5/i1;

    iget-object v2, p0, Lg5/h7;->b:Lg5/u;

    iget-object v3, p0, Lg5/h7;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lg5/w8;->k(Lb5/i1;Lg5/u;Ljava/lang/String;)V

    return-void
.end method
