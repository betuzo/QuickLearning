//
//  QuickLearningService.h
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 03/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuickLearningService : NSObject

+ (NSArray *) usuario;
+ (NSArray *) horarioUsuario;
+ (NSArray *) seccInfo;
+ (NSArray *) nivelesUsuario;
+ (NSArray *) pagosUsuario;
+ (NSArray *) sucursales;
+ (void) initializeDatosTest;

@end
